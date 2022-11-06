Use Aula2Ex2
Go

--Adicionar User(6; Joao; Ti_joao; 123mudar; joao@empresa.com)
Insert Into users (name,username, password, email )Values
('Joao','Ti_joao', '123mudar', 'joao@empresa.com')

-- Adicionar Project(10004; Atualização de Sistemas; Modificação de Sistemas Operacionais nos PC's; 
--12/09/2014)

Insert Into  projects (name, description, date) Values
('Atualização de Sistemas', 'Modificação de Sistemas Operacionais nos PCs', '20140912')

Select*From users
Select*From projects
select*From users_has_projects

Select users.id, users.name, email, projects.id, projects.name, description, date
From users Inner Join users_has_projects
On users.id = users_has_projects.users_id
Inner Join projects
On projects.id = users_has_projects.projects_id
Where projects.name = 'Re-folha'

Select projects.name 
From  projects Left Outer Join users_has_projects
On projects.id = users_has_projects.projects_id
Where users_has_projects.users_id Is Null

Select users.name
From users Left Outer Join users_has_projects
On users.id = users_has_projects.users_id
Where users_has_projects.projects_id Is null
