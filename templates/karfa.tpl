% extends "default.html" %}
{% block title %}
Karfa
{% endblock %}

{% block content %}
{% if tom == False %}

    <h2 class="centers">Smelltu á vöru til að eyða henni úr körfunni</h2>
    <table class="table">
        <thead>
            <tr>
            <th></th>
            <th>Nafn</th>
            <th>Verð</th>
            </tr>
        </thead>
        <tbody>
            {% for i in karfa %}
            <tr>
            <td class="tableimg"><img class="karfamynd" src="/static/img/{{ i[2] }}"></td>
            <td><a href="/eyda/{{ i[0] }}">{{ i[1] }}</a></td>
            <td>{{ i[3] }}</td>
            </tr>
            {% endfor %}
        </tbody>
        <tfoot>
            <tr>
            <td></td>
            <td>Samtals:</td>
            <td>{{ total }}</td>
            </tr>
        </tfoot>
    </table>
    <a href="/eyda" id="agh"><h3>Eyða körfu</h3></a>
    {% include "form.html" %}
{% else %}
    <h1 style="text-align: center">Karfan er tóm</h1>
{% endif %}
{% endblock %}