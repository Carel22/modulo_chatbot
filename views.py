from django.shortcuts import render
from .models import ChatMessage

def chat(request):
    if request.method == 'POST':
        user_message = request.POST.get('text', '')

        # Definir un diccionario de preguntas y respuestas
        preguntas_respuestas = {
            "¿Cuáles son los signos de violencia de género?": "Los signos pueden variar, pero algunos incluyen agresiones físicas, insultos, amenazas, control excesivo, aislamiento de amigos y familiares, y coerción sexual. Es importante estar atento a cualquier comportamiento que haga sentir a alguien vulnerable, asustado o humillado.",
            "¿Cuáles son los signos de violencia contra niños?": "Los signos pueden variar según el tipo de violencia, pero algunos incluyen moretones inexplicables, cambios bruscos de comportamiento, miedo a estar con ciertas personas, problemas de salud no explicados, regresión en el desarrollo y cambios en el rendimiento escolar.",
            "¿Qué impacto tiene la violencia psicológica en la salud mental?": "La violencia psicológica puede tener un impacto devastador en la salud mental de la víctima. Puede llevar a problemas de ansiedad, depresión, trastorno de estrés postraumático y otros problemas de salud mental.",
            "¿Cómo puedo prevenir la violencia intrafamiliar?": "La prevención implica educación sobre relaciones saludables y resolución de conflictos sin violencia. Promueve la comunicación abierta en la familia, fomenta la igualdad de género y busca ayuda profesional si hay signos de violencia en el hogar.",
            "¿A quién puedo acudir si sospecho de violencia intrafamiliar?": "Habla con el niño de manera comprensiva. Informa a las autoridades si es necesario.",
            "¿A qué se refiere la violencia de género?": "Si tienes razones para creer que alguien está siendo víctima de violencia intrafamiliar, puedes comunicarte con la policía o con organizaciones locales que brindan apoyo a víctimas de violencia doméstica. También puedes alentar a la persona afectada a buscar ayuda profesional.",
            "¿Cuáles son los signos de violencia intrafamiliar?": "Los signos pueden variar, pero algunos incluyen lesiones físicas, miedo constante, aislamiento, control excesivo, cambios de comportamiento y depresión en las víctimas.",
            "¿Qué es la violencia intrafamiliar?": "La violencia intrafamiliar incluye abuso físico, emocional, sexual o económico que ocurre entre miembros de una familia o entre personas en una relación íntima, como parejas casadas o convivientes.",
            "¿¿Qué medidas de seguridad debo tomar si soy testigo de violencia contra un niño?": "Si presencias violencia inmediata o sospechas que un niño está en peligro, llama a las autoridades de inmediato. No intervengas directamente en situaciones peligrosas, ya que esto podría empeorar la situación.",
            "¿Cómo puedo ayudar a un niño que está experimentando violencia?": "Escucha al niño con empatía y bríndale apoyo emocional. Anima al niño a hablar sobre lo que está pasando, pero no lo presiones. Informa a las autoridades competentes y ofrece tu apoyo para buscar ayuda profesional.",
            "¿Qué es una orden de restricción?": "Es una orden legal que prohíbe al agresor acercarse a la víctima en casos de violencia.",
            "¿Cómo saber si puedes ser una persona violenta?": "Si te enfadas fácilmente, es importante buscar ayuda y consejería.",
            "¿Qué hacer para no ser una persona violenta?": "Buscar apoyo de un terapeuta o consejero para aprender a manejar la ira.",
            "¿Cómo puedo prevenir la violencia de género?": "La prevención comienza con la educación y la concienciación. Promueve la igualdad de género, fomenta relaciones saludables y enseña a las personas a reconocer y abordar la violencia de género. También es importante denunciar cualquier comportamiento abusivo."
        }

        # Obtener la respuesta del chatbot según la pregunta del usuario
        bot_response = preguntas_respuestas.get(user_message, "Lo siento, no entiendo esa pregunta.")

        # Guardar el mensaje del usuario y la respuesta del chatbot en la base de datos
        ChatMessage.objects.create(text="Usuario: " + user_message)
        ChatMessage.objects.create(text="Chatbot: " + bot_response)

    messages = ChatMessage.objects.all()
    return render(request, 'chat.html', {'messages': messages})

