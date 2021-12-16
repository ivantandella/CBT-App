@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h5>{{ $ujian->nama_ujian }}</h5>
                <!-- Display the countdown timer in an element -->
		        <span class="badge badge-danger mb-5 pull-right" id="timer"></span>
            </div>
            <form id="frmSoal" action="{{ route('finish') }}" method="POST">
                @csrf
                <input type="hidden" id="time" value="{{ $ujian->waktu }}">
                <div class="card-block">
                    @foreach ($data as $soal)
                        <div class="card">
                            <div class="card-body">
                                @if ($soal->gambar_soal)
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <img src="{{ asset('storage/' . $soal->gambar_soal) }}" alt="Gambar Soal" class="img-fluid" style="width: 200px">
                                        </div>
                                    </div>
                                @endif
                                <p class="card-text">{!! $soal->isi_soal !!}</p>
                                
                                <ol type="A">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="soal{{ $loop->iteration }}" id="pil-a" value="A">
                                        <li class="ms-3 mb-3">
                                            @if ($soal->gambar_pil_a)
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <img src="{{ asset('storage/' . $soal->gambar_pil_a) }}" alt="Gambar Soal" class="img-fluid">
                                                    </div>
                                                </div>
                                            @endif
                                            {!! $soal->pil_a !!}
                                        </li>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="soal{{ $loop->iteration }}" id="pil-b" value="B">
                                        <li class="ms-3 mb-3">
                                            @if ($soal->gambar_pil_b)
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <img src="{{ asset('storage/' . $soal->gambar_pil_b) }}" alt="Gambar Soal" class="img-fluid">
                                                    </div>
                                                </div>
                                            @endif
                                            {!! $soal->pil_b !!}
                                        </li>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="soal{{ $loop->iteration }}" id="pil-c" value="C">
                                        <li class="ms-3 mb-3">
                                            @if ($soal->gambar_pil_c)
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <img src="{{ asset('storage/' . $soal->gambar_pil_c) }}" alt="Gambar Soal" class="img-fluid">
                                                    </div>
                                                </div>
                                            @endif
                                            {!! $soal->pil_c !!}
                                        </li>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="soal{{ $loop->iteration }}" id="pil-d" value="D">
                                        <li class="ms-3 mb-3">
                                            @if ($soal->gambar_pil_d)
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <img src="{{ asset('storage/' . $soal->gambar_pil_d) }}" alt="Gambar Soal" class="img-fluid">
                                                    </div>
                                                </div>
                                            @endif
                                            {!! $soal->pil_d !!}
                                        </li>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="soal{{ $loop->iteration }}" id="pil-e" value="E">
                                        <li class="ms-3 mb-3">
                                            @if ($soal->gambar_pil_e)
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <img src="{{ asset('storage/' . $soal->gambar_pil_e) }}" alt="Gambar Soal" class="img-fluid">
                                                    </div>
                                                </div>
                                            @endif
                                            {!! $soal->pil_e !!}
                                        </li>
                                    </div>
                                </ol>
                            </div>
                        </div>
                    @endforeach
                    {{-- <div class="row mb-3 justify-content-center">
                        <div class="col-md-2">
                            {{ $data->links() }}
                        </div>
                    </div> --}}
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <button type="submit" onclick="return confirm('Apakah anda yakin ingin menyelesaikan ujian?')" class="btn btn-sm btn-success pull-right">Finish</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    var add_minutes =  function (dt, minutes) {
    return new Date(dt.getTime() + minutes*60000);
    }
    
    // Get today's date and time
    var now = new Date();

    var waktu = document.querySelector('#time').value;

    // Set the date we're counting down to
    var countDownDate = add_minutes(now, waktu);

    // Update the count down every 1 second
    var x = setInterval(function() {

        // Get today's date and time
        var now2 = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now2;

        // Time calculations for days, hours, minutes and seconds
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Display the result in the element with id="demo"
        document.getElementById("timer").innerHTML = "Sisa Waktu : " + hours + " jam "
        + minutes + " menit "+ seconds + " detik ";

        // If the count down is finished, write some text
        if (distance < 0) {
            clearInterval(x);
            var frmSoal = document.querySelector('#frmSoal');
            frmSoal.submit();
            Livewire.emit('endTimer');
        }
    }, 1000);
</script>
@endsection