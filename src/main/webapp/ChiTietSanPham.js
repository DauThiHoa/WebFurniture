function zoomount(image) {
    var src = image.src;
    document.getElementById('anh').src = src;
}

function tru(giamSoLuong) {
    var so = parseInt(document.querySelector(".soLuongDat").innerHTML);
    if (so == 1) {
        document.querySelector(".soLuongDat").innerHTML = 1;
    } else {
        document.querySelector(".soLuongDat").innerHTML = so - 1;
    }
}

function cong(tangSoLuong) {
    var so = parseInt(document.querySelector(".soLuongDat").innerHTML);
    document.querySelector(".soLuongDat").innerHTML = so + 1;
}