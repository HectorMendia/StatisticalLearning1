       �K"	  @�q��Abrain.Event:2��H�      �G�	�Q�q��A"�
l
Value_xPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
b
Value_yPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
imagen_pruebaPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
W
restaSubimagen_pruebaValue_x*
T0*(
_output_shapes
:����������
J
	distanciaAbsresta*
T0*(
_output_shapes
:����������
]
reduccion/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
	reduccionSum	distanciareduccion/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
I
	negativosNeg	reduccion*
T0*#
_output_shapes
:���������
W
extraccion_cercanos/kConst*
value	B :
*
dtype0*
_output_shapes
: 
x
extraccion_cercanosTopKV2	negativosextraccion_cercanos/k*
sorted(*
T0* 
_output_shapes
:
:

Q
mapeo_de_y/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

mapeo_de_yGatherV2Value_yextraccion_cercanos:1mapeo_de_y/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*
_output_shapes
:

�
valores_unicosUniqueWithCounts
mapeo_de_y*
T0*
out_idx0*8
_output_shapes&
$:���������:
:���������
R
argmax/dimensionConst*
value	B : *
dtype0*
_output_shapes
: 
t
argmaxArgMaxvalores_unicos:2argmax/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
: 
G
add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
<
addAddV2argmaxadd/y*
T0	*
_output_shapes
: 
]
strided_slice/stackPackargmax*
T0	*

axis *
N*
_output_shapes
:
\
strided_slice/stack_1Packadd*
T0	*

axis *
N*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
u
strided_slice/CastCaststrided_slice/stack_2*

SrcT0*
Truncate( *

DstT0	*
_output_shapes
:
�
strided_sliceStridedSlicevalores_unicosstrided_slice/stackstrided_slice/stack_1strided_slice/Cast*
T0*
Index0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

initNoOp

init_1NoOp
"

group_depsNoOp^init^init_1
v
$report_uninitialized_variables/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concatConcatV2$report_uninitialized_variables/Const$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*
N*
_output_shapes
: 
x
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
x
&report_uninitialized_resources_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_1ConcatV2&report_uninitialized_variables_1/Const&report_uninitialized_resources_1/Constconcat_1/axis*

Tidx0*
T0*
N*
_output_shapes
: 

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables"�	H�g�      n؋�	�U�q��AJ�)
��
.
Abs
x"T
y"T"
Ttype:

2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
l
UniqueWithCounts
x"T
y"T
idx"out_idx
count"out_idx"	
Ttype"
out_idxtype0:
2	*2.1.02unknown�
l
Value_xPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
b
Value_yPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
imagen_pruebaPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
W
restaSubimagen_pruebaValue_x*
T0*(
_output_shapes
:����������
J
	distanciaAbsresta*
T0*(
_output_shapes
:����������
]
reduccion/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
	reduccionSum	distanciareduccion/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
I
	negativosNeg	reduccion*
T0*#
_output_shapes
:���������
W
extraccion_cercanos/kConst*
value	B :
*
dtype0*
_output_shapes
: 
x
extraccion_cercanosTopKV2	negativosextraccion_cercanos/k*
sorted(*
T0* 
_output_shapes
:
:

Q
mapeo_de_y/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

mapeo_de_yGatherV2Value_yextraccion_cercanos:1mapeo_de_y/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0*
_output_shapes
:

�
valores_unicosUniqueWithCounts
mapeo_de_y*
T0*
out_idx0*8
_output_shapes&
$:���������:
:���������
R
argmax/dimensionConst*
value	B : *
dtype0*
_output_shapes
: 
t
argmaxArgMaxvalores_unicos:2argmax/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
: 
G
add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
<
addAddV2argmaxadd/y*
T0	*
_output_shapes
: 
]
strided_slice/stackPackargmax*
T0	*

axis *
N*
_output_shapes
:
\
strided_slice/stack_1Packadd*
T0	*

axis *
N*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
u
strided_slice/CastCaststrided_slice/stack_2*

SrcT0*
Truncate( *

DstT0	*
_output_shapes
:
�
strided_sliceStridedSlicevalores_unicosstrided_slice/stackstrided_slice/stack_1strided_slice/Cast*
T0*
Index0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

initNoOp

init_1NoOp
"

group_depsNoOp^init^init_1
v
$report_uninitialized_variables/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concatConcatV2$report_uninitialized_variables/Const$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*
N*
_output_shapes
: 
x
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
x
&report_uninitialized_resources_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_1ConcatV2&report_uninitialized_variables_1/Const&report_uninitialized_resources_1/Constconcat_1/axis*

Tidx0*
T0*
N*
_output_shapes
: 

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables"�"
init_op


group_deps"
ready_op


concat:0")
ready_for_local_init_op


concat_1:0"!
local_init_op

group_deps_1"

savers ��