class PeopleController < ApplicationController
    @@question_operation = [
        {"id": 1, "category": "Compromiso Organizacional", "question": "Trata de adaptarse a la organización."},
        {"id": 2, "category": "Compromiso Organizacional", "question": "Muestra lealtad y apego a aspectos críticos de la organización."},
        {"id": 3, "category": "Compromiso Organizacional", "question": "Expresa orgullo por la empresa promoviendo los valores de la misma al interior y al exterior."},
        {"id": 4, "category": "Pensamiento Analítico", "question": "Comprende situaciones y entiende aspectos básicos, analiza los problemas identificando las causas- efectos de los mismos."},
        {"id": 5, "category": "Pensamiento Analítico", "question": "Utiliza herramientas de análisis para identificar las causas de los problemas (Excel, diagramas)"},
        {"id": 6, "category": "Pensamiento Analítico", "question": "Identifica los temas clave para dar solución desde la causa raíz."},
        {"id": 7, "category": "Desarrollo de relaciones", "question": "Desarrolla relaciones de colaboración y confianza con personas de su equipo y de otras áreas buscando la colaboración."},
        {"id": 8, "category": "Desarrollo de relaciones", "question": "Desarrolla relaciones de largo plazo con su equipo de trabajo y si fuere el caso, con clientes, colaboradores externos y proveedores de confianza en beneficio de la empresa"},
        {"id": 9, "category": "Desarrollo de relaciones", "question": "Se relaciona con personal clave para el mejoramiento continuo (interno y externo) a partir de relaciones de confianza."},
        {"id": 10, "category": "Pro actividad/iniciativa", "question": "Actúa con sentido de urgencia y no espera que el problema se resuelva solo."},
        {"id": 11, "category": "Pro actividad/iniciativa", "question": "Define las acciones correctivas necesarias para evitar o atenuar los riesgos identificados que pudieran convertirse en problemas más graves."},
        {"id": 12, "category": "Pro actividad/iniciativa", "question": "Se anticipa y toma acción para evitar problemas al desarrollar planes y estrategias para evitar crisis futuras."},
        {"id": 13, "category": "Impacto e influencia", "question": "Utiliza múltiples medios para comunicarse, ajusta su lenguaje, estilo y estrategia de comunicación de acuerdo con las características y necesidades de las personas."},
        {"id": 14, "category": "Impacto e influencia", "question": "Apela a la razón, con datos e información de interés para comunicarse eficientemente con otras personas."},
        {"id": 15, "category": "Impacto e influencia", "question": "Identifica las reacciones de las otras personas y ajusta sus mensajes para influir positivamente."},
    ]
    @@question_operation_engineer = [
        {"id": 1, "category": "Compromiso Organizacional",
            "question": "Trata de adaptarse a la organización."},
        {"id": 2, "category": "Compromiso Organizacional",
            "question": "Muestra lealtad y apego a aspectos críticos de la organización."},
        {"id": 3, "category": "Compromiso Organizacional",
            "question": "Expresa orgullo por la empresa promoviendo los valores de la misma al interior y al exterior."},
        {"id": 4, "category": "Aprendizaje Continuo",
            "question": "Realiza un gran esfuerzo por adquirir nuevas habilidades. Toma cursos y aplica sus conocimientos en los ciclos."},
        {"id": 5, "category": "Aprendizaje Continuo",
            "question": "Mantiene su formación técnica actualizada, busca información relevante, lee libros, blogs o escucha algun podcast."},
        {"id": 6, "category": "Aprendizaje Continuo",
            "question": "Comparte sus conocimientos y experiencia actuando como propagador de nuevas tecnologías y como apoyo en la resolución de problemas de otros equipos."},
        {"id": 7, "category": "Desarrollo de relaciones",
            "question": "Desarrolla relaciones de colaboración y confianza con personas de su equipo y de otras áreas buscando la colaboración."},
        {"id": 8, "category": "Desarrollo de relaciones",
            "question": "Desarrolla relaciones de largo plazo, y si fuere el caso tambien lo haría con colaboradores externos y proveedores en beneficio de la empresa."},
        {"id": 9, "category": "Desarrollo de relaciones",
            "question": "Se relaciona a partir de una comunicación empática y transparente, buscando entender a su contraparte antes de ser entendido."},
        {"id": 10, "category": "Pro actividad/iniciativa",
            "question": "Actúa con sentido de urgencia y no espera que el problema se resuelva solo."},
        {"id": 11, "category": "Pro actividad/iniciativa",
            "question": "Define las acciones correctivas necesarias para evitar o atenuar los riesgos identificados que pudieran convertirse en problemas más graves."},
        {"id": 12, "category": "Pro actividad/iniciativa",
            "question": "Se anticipa y toma acción para evitar problemas al desarrollar planes y estrategias para evitar crisis futuras."},
        {"id": 13, "category": "Impacto e influencia",
            "question": "Utiliza múltiples medios para comunicarse, ajusta su lenguaje, estilo y estrategia de comunicación de acuerdo con las características y necesidades de las personas."},
        {"id": 14, "category": "Impacto e influencia",
            "question": "Apela a la razón, con datos e información de interés para comunicarse eficientemente con otras personas."},
        {"id": 15, "category": "Impacto e influencia",
            "question": "Identifica las reacciones de las otras personas y ajusta sus mensajes para influir positivamente."},
    ]
    @@question_strategist = [
        {"id": 1, "category": "Compromiso Organizacional", "question": "Realiza esfuerzos adicionales para apoyar la misión y valores organizacionales."},
        {"id": 2, "category": "Compromiso Organizacional", "question": "Se esfuerza por actuar de acuerdo con los lineamientos de la alta dirección en cuanto a la misión y valores organizacionales."},
        {"id": 3, "category": "Compromiso Organizacional", "question": "Apoya las decisiones que benefician a la organización aun cuando no sean populares."},
        {"id": 4, "category": "Pensamiento Analítico", "question": "Analiza problemas identificando distintas relaciones entre diversas causas apoyándose con herramientas de análisis de datos."},
        {"id": 5, "category": "Pensamiento Analítico", "question": "Reconoce patrones en problemas frecuentes identificando la solución más eficiente."},
        {"id": 6, "category": "Pensamiento Analítico", "question": "Utiliza herramientas de análisis para identificar las causas de los problemas (Excel, diagramas)."},
        {"id": 7, "category": "Liderazgo de Equipo", "question": "Promueve la efectividad del equipo, establece límites para el desempeño y genera condiciones para que el equipo desempeñe su trabajo de la mejor manera."},
        {"id": 8, "category": "Liderazgo de Equipo", "question": "Es un líder de confianza, se posiciona como modelo a seguir impulsando continuamente el desarrollo de su equipo."},
        {"id": 9, "category": "Liderazgo de Equipo", "question": "Es un líder que genera entusiasmo y compromiso guiando continuamente al personal hacia los objetivos de la empresa."},
        {"id": 10, "category": "Desarrollo de otros", "question": "Identifica las áreas de oportunidad de las personas de su equipo y los motiva en su desarrollo, brindando herramientas que pueda tener a su alcance."},
        {"id": 11, "category": "Desarrollo de otros", "question": "Desarrolla al personal a partir de sesiones de retroalimentación o capacitación específica"},
        {"id": 12, "category": "Desarrollo de otros", "question": "Desarrolla al personal a partir de asignaciones en proyectos que representen un reto."},
        {"id": 13, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones de colaboración y confianza con personas de su equipo y de otras áreas buscando la colaboración."},
        {"id": 14, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones de largo plazo y si fuere el caso, con clientes, colaboradores externos y proveedores de confianza en beneficio de la empresa."},
        {"id": 15, "category": "Desarrollo de Relaciones", "question": "Se relaciona con personal clave para el mejoramiento continuo (interno y externo) a partir de una comunicación empática y transparente, buscando entender a su contraparte antes de ser entendido."},
    ]
    @@question_strategist_engineer = [
        {"id": 1, "category": "Compromiso Organizacional", "question": "Realiza esfuerzos adicionales para apoyar la misión y valores organizacionales."},
        {"id": 2, "category": "Compromiso Organizacional", "question": "Se esfuerza por actuar de acuerdo con los lineamientos de la alta dirección en cuanto a la misión y valores organizacionales."},
        {"id": 3, "category": "Compromiso Organizacional", "question": "Apoya las decisiones que benefician a la organización aun cuando no sean populares."},
        {"id": 4, "category": "Aprendizaje Continuo", "question": "Realiza un gran esfuerzo por adquirir nuevas habilidades. Toma cursos y aplica sus conocimientos en los ciclos."},
        {"id": 5, "category": "Aprendizaje Continuo", "question": "Mantiene su formación técnica actualizada, busca información relevante, lee libros, blogs o escucha algun podcast."},
        {"id": 6, "category": "Aprendizaje Continuo", "question": "Comparte sus conocimientos y experiencia actuando como propagador de nuevas tecnologías y como apoyo en la resolución de problemas de otros equipos."},
        {"id": 7, "category": "Liderazgo de Equipo", "question": "Promueve la efectividad del equipo, establece límites para el desempeño y genera condiciones para que el equipo desempeñe su trabajo de la mejor manera."},
        {"id": 8, "category": "Liderazgo de Equipo", "question": "Es un líder de confianza, se posiciona como modelo a seguir impulsando continuamente el desarrollo de su equipo."},
        {"id": 9, "category": "Liderazgo de Equipo", "question": "Es un líder que genera entusiasmo y compromiso guiando continuamente al personal hacia los objetivos de la empresa."},
        {"id": 10, "category": "Desarrollo de otros", "question": "Identifica las áreas de oportunidad de las personas de su equipo y los motiva en su desarrollo, brindando herramientas que pueda tener a su alcance."},
        {"id": 11, "category": "Desarrollo de otros", "question": "Desarrolla a su equipo a partir de sesiones 1 on 1 dando retroalimentación continua."},
        {"id": 12, "category": "Desarrollo de otros", "question": "Empuja y motiva a su equipo a partir de asignaciones en proyectos que representen un reto."},
        {"id": 13, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones de colaboración y confianza con personas de su equipo y de otras áreas buscando la colaboración."},
        {"id": 14, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones de largo plazo, y si fuere el caso también lo haría con colaboradores externos y proveedores en beneficio de la empresa."},
        {"id": 15, "category": "Desarrollo de Relaciones", "question": "Se relaciona a partir de una comunicación empática y transparente, buscando entender a su contraparte antes de ser entendido."},
    ]
    @@question_management = [
        {"id": 1, "category": "Pensamiento Analítico", "question": "Analiza problemas identificando distintas relaciones entre diversas causas apoyándose con herramientas complejas de análisis."},
        {"id": 2, "category": "Pensamiento Analítico", "question": "Realiza análisis complejos a partir de la interpretación de estadísticas, tendencias y estudios del mercado."},
        {"id": 3, "category": "Pensamiento Analítico", "question": "Analiza problemas organizando datos numéricos y realizando análisis estadísticos complejos."},
        {"id": 4, "category": "Liderazgo de Equipo", "question": "Se posiciona como líder, desarrolla y reconoce al equipo."},
        {"id": 5, "category": "Liderazgo de Equipo", "question": "Genera entusiasmo y compromiso guiando continuamente al personal hacia los objetivos de la empresa."},
        {"id": 6, "category": "Liderazgo de Equipo", "question": "Guía al personal hacia los objetivos, retroalimentado continuamente a las personas, para alcanzar el logro de metas y el desarrollo de su equipo."},
        {"id": 7, "category": "Desarrollo de Otros", "question": "Otorga herramientas de capacitación a toda la empresa para fomentar la mejora continua."},
        {"id": 8, "category": "Desarrollo de Otros", "question": "Desarrolla al personal impulsando una cultura de innovación y creando un ambiente de aprendizaje profecional y personal."},
        {"id": 9, "category": "Desarrollo de Otros", "question": "Desarrolla al personal de la empresa apoyándose de expertos externos."},
        {"id": 10, "category": "Desarrollo de Relaciones", "question": "Participa en diversos foros y eventos sociales para lograr relaciones de confianza que beneficien a la empresa."},
        {"id": 11, "category": "Desarrollo de Relaciones", "question": "Establece o mantiene vínculos de relación sólidos que ayudan al crecimiento continuo del grupo (clientes, expertos, proveedores)"},
        {"id": 12, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones productivas con corporativos o instituciones de interés."},
    ]
    @@question_management_engineer = [
        {"id": 1, "category": "Pensamiento Analítico", "question": "Analiza problemas identificando distintas relaciones entre diversas causas apoyándose con herramientas complejas de análisis."},
        {"id": 2, "category": "Pensamiento Analítico", "question": "Realiza análisis complejos a partir de la interpretación de estadísticas, tendencias y estudios del mercado."},
        {"id": 3, "category": "Pensamiento Analítico", "question": "Analiza problemas organizando datos numéricos y realizando análisis estadísticos complejos."},
        {"id": 4, "category": "Liderazgo de Equipo", "question": "Se posiciona como líder, desarrolla y reconoce al equipo."},
        {"id": 5, "category": "Liderazgo de Equipo", "question": "Genera entusiasmo y compromiso guiando continuamente al personal hacia los objetivos de la empresa."},
        {"id": 6, "category": "Liderazgo de Equipo", "question": "Guía al personal hacia los objetivos, retroalimentado continuamente a las personas, para alcanzar el logro de metas y el desarrollo de su equipo."},
        {"id": 7, "category": "Desarrollo de Otros", "question": "Otorga herramientas de capacitación a toda la empresa para fomentar la mejora continua."},
        {"id": 8, "category": "Desarrollo de Otros", "question": "Desarrolla al personal impulsando una cultura de innovación y creando un ambiente de aprendizaje profesional y personal."},
        {"id": 9, "category": "Desarrollo de Otros", "question": "Desarrolla al personal de la empresa apoyándose de expertos externos."},
        {"id": 10, "category": "Desarrollo de Relaciones", "question": "Participa en diversos foros y eventos sociales para lograr relaciones de confianza que beneficien a la empresa."},
        {"id": 11, "category": "Desarrollo de Relaciones", "question": "Establece o mantiene vínculos de relación sólidos que ayudan al crecimiento continuo del grupo (clientes, expertos, proveedores)"},
        {"id": 12, "category": "Desarrollo de Relaciones", "question": "Desarrolla relaciones productivas con corporativos o instituciones de interés."},
    ]

    before_action :find_person, except: [:new, :create, :index, :from_author, :start_evaluation, :evaluation]
    before_action :authenticate_user!, only: [:new, :index, :create, :edit, :update, :destroy, :start_evaluation]
    skip_before_action :verify_authenticity_token, :only => [:evaluation, :start_evaluation]
    def new
        # if current_user.email=='edith@reservamos.mx'
            @person = Person.new
            @newline = "que tal"
        # end
    end
    def create
        @person = current_user.people.create(person_params)
        # render json: @people
        redirect_to @person
    end
    def show
        @person = Person.find(params[:id])
    end
    def edit
        @person = Person.find(params[:id])
        puts "\n\n\n #{@person.persisted?} \n\n\n"
    end
    def update
        @person.update(person_params)
        # redirect_to @person
        redirect_to people_path
    end    
    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        # redirect_to root_path
        redirect_to people_path
    end
    def find_person
        @person = Person.find(params[:id])
    end
    def index
        @people = Person.all
    end
    def from_author
        @user = User.find(params[:user_id])
    end    
    def person_params
        params.require(:person).permit(:name, :category, :email, :area, :leader)
    end
    def start_evaluation
        # print(request.method)
        if request.method == "POST"
            print("METHOD")
            print(params)
            # @name_evaluated = params[:name_person]
        end
        @people = Person.all
        # Get current user:
        email_user = current_user.email
        print(email_user)
        # Create dictionary with person Data from PeopleList
        list_people = []
        name_people = []
        name_evaluator = ''
        for name in @people do
            name_people.append(name.name)
            personName = name.name
            personCategory = name.category
            personEmail = name.email
            personArea = name.area
            personLeader = name.leader
            personData = {
                'name': personName,
                'category': personCategory,
                'email': personEmail,
                'area': personArea,
                'leader': personLeader,
            }
            list_people.append(personData)
            if (email_user == personEmail)
                @name_evaluator = personName
            end
            # print(@name_evaluator)
        end
        sorted_people = name_people.sort
        # print(sorted_people)
        
    end

    def evaluation
        # print(request.method)
        if request.method == "POST"
            # print(@@question_operation)
            @questions_strategist = @@question_strategist
            @questions_strategist_engineer = @@question_strategist_engineer
            @questions_operation = @@question_operation
            @questions_operation_engineer = @@question_operation_engineer
            @questions_management = @@question_management
            @questions_management_engineer = @@question_management_engineer
            @name_evaluated = params[:name_person]
            print(@name_evaluated)
            @people = Person.all
            email_user = current_user.email
            name_evaluator = ''
            for name in @people do
                print(name)
                if name.name == @name_evaluated
                    @personCategory = name.category
                    personEmail = name.email
                    @personArea = name.area
                    @personLeader = name.leader
                end
                if (email_user == name.email)
                    @name_evaluator = name.name
                end
            end
        end
    end
end

