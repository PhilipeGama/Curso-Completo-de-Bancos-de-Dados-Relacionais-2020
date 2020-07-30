use universidade_u;

insert into gasto(ano, tipo, jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez)values('2019', 'previsto', 18000, 17000, 19000, 20000, 17000, 18000, 18500, 18500, 1800, 17500, 18000, 17000);
insert into gasto(ano, tipo, jan)values('2019', 'realizado', 18353.20);
update gasto set fev = 17555.55 where idgasto = 2;
update gasto set mar = 19435.73 where idgasto = 2;
update gasto set abr = 22753.12 where idgasto = 2;
update gasto set mai = 16198.12 where idgasto = 2;
update gasto set jun = 17451.88 where idgasto = 2;
update gasto set jul = 18975.40 where idgasto = 2;
update gasto set ago = 19163.84 where idgasto = 2;
update gasto set `set` = 18132.56 where idgasto = 2;
update gasto set `out` = 17667.91 where idgasto = 2;
update gasto set nov = 17936.33 where idgasto = 2;
update gasto set dez = 17125.88 where idgasto = 2;


select * from gasto;

select idgasto from gasto where ano = 2019 and tipo = ‘realizado’;
select idgasto from gasto where ano = 2019 and tipo = ‘previsto’

select
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_jan;
        
        select
    (select
		fev
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		fev
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_fev,
        
       (select
		mar
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		mar
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_mar;
