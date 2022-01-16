function changeProductList(type, element){
    let tabs = document.getElementsByClassName('SapXep');
    for ( i = 0; i < tabs.length; i++) {
        tabs[i].style.background;

    }
    element.style.background;
    document.getElementById(type).style.display = 'block';

    switch (type) {
        case 'macDinh':
            document.getElementById('XepZ').style.display='block';
            document.getElementById('XepA').style.display='block';
            document.getElementById('Hangmoi').style.display='block';
            document.getElementById('Giacao').style.display='block';
            document.getElementById('Giathap').style.display='block';
            break;
        case 'XepZ':
            document.getElementById('macDinh').style.display='block';
            document.getElementById('XepA').style.display='block';
            document.getElementById('Hangmoi').style.display='block';
            document.getElementById('Giacao').style.display='block';
            document.getElementById('Giathap').style.display='block';
            break;
        case 'XepA':
            document.getElementById('XepZ').style.display='block';
            document.getElementById('macDinh').style.display='block';
            document.getElementById('Hangmoi').style.display='block';
            document.getElementById('Giacao').style.display='block';
            document.getElementById('Giathap').style.display='block';
            break;
        case 'Hangmoi':
            document.getElementById('XepZ').style.display='block';
            document.getElementById('XepA').style.display='block';
            document.getElementById('macDinh').style.display='block';
            document.getElementById('Giacao').style.display='block';
            document.getElementById('Giathap').style.display='block';
            break;
        case 'Giacao':
            document.getElementById('XepZ').style.display='block';
            document.getElementById('XepA').style.display='block';
            document.getElementById('Hangmoi').style.display='block';
            document.getElementById('macDinh').style.display='block';
            document.getElementById('Giathap').style.display='block';
            break;
        case 'Giathap':
            document.getElementById('XepZ').style.display='block';
            document.getElementById('XepA').style.display='block';
            document.getElementById('Hangmoi').style.display='block';
            document.getElementById('Giacao').style.display='block';
            document.getElementById('macDinh').style.display='block';
            break;



    }
}