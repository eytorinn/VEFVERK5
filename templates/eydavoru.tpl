{% extends 'base.html'%}

{% block title %}
    Vefverslun - vöru eytt
{% endblock %}

{% block refresh %}
    <meta http-equiv="refresh"content="1; url={{ url_for('karfa') }}">
    #notum meta refresh til að fara í körfu aftur
{%  endblock %}

{% block content  %}
    <h1> Vöru úr körfu hefur verið eytt... </h1>

{% endblock %}
