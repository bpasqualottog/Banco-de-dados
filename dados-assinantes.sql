-- Inserindo dados na tabela Municipio
INSERT INTO Municipio (cd_municipio, ds_municipio) VALUES
(1, 'Pelotas'),
(2, 'Natal');

-- Inserindo dados na tabela Tipo_Assinante
INSERT INTO Tipo_Assinante (cd_tipo, ds_tipo) VALUES
(1, 'residencial'),
(2, 'comercial');

-- Inserindo dados na tabela Ramo
INSERT INTO Ramo (cd_ramo, ds_ramo) VALUES
(1, 'Alimentação'),
(2, 'Tecnologia');

-- Inserindo dados na tabela Endereco
INSERT INTO Endereco (cd_endereco, ds_endereco, complemento, bairro, cep, cd_municipio) VALUES
(1, 'Rua das Flores, 123', 'Apto 101', 'Centro', '96010000', 1),
(2, 'Av. Nevaldo Rocha, 1000', 'Sala 201', 'Tirol', '59020100', 2);

-- Inserindo dados na tabela Assinante
INSERT INTO Assinante (cd_assinante, nm_assinante, cd_endereco, cd_tipo, cd_ramo) VALUES
(1, 'João Silva', 1, 1, NULL),  -- Residencial sem ramo
(2, 'Empresa Tech Ltda', 2, 2, 2);  -- Comercial com ramo Tecnologia

-- Inserindo dados na tabela Telefone
INSERT INTO Telefone (cd_fone, dd, n_fone, cd_assinante) VALUES
(1, '53', '32221234', 1),
(2, '84', '987654321', 2),
(3, '53', '999888777', 1);  -- Segundo telefone para João Silva
