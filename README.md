# AlzheimerDetection_TC_PET-MATLAB
## Descripción:
Este repositorio contiene un proyecto de procesamiento de imágenes médicas desarrollado en MATLAB. La interfaz gráfica de usuario (GUI) permite cargar imágenes médicas, realizar análisis de imágenes y obtener resultados relacionados con signos de Alzheimer. El código se enfoca en el procesamiento de imágenes de Tomografía Computarizada (TC) y Tomografía por Emisión de Positrones (PET). El proyecto fue realizado en el quinto semestre de la carrera de Ingeniería Biomédica como parte de un curso de Procesamiento Digital de Señales (PDS). La GUI proporciona opciones para cargar imágenes, analizarlas y guardar los resultados en un archivo de texto.

## Funcionalidades Principales:
### Interfaz Gráfica de Usuario (GUI):
La interfaz gráfica de usuario permite al usuario interactuar con el programa de manera intuitiva.
Contiene elementos como botones, cuadros de texto y paneles para facilitar la entrada de datos y la visualización de imágenes.
### Cargar Imágenes:
Hay botones específicos ("Cargar" y "Cargar PET") que permiten al usuario cargar imágenes médicas en el formato correcto (TC o PET).
### Análisis de Imágenes (TC):
Para las imágenes de Tomografía Computarizada (TC), hay un conjunto de pasos de análisis que incluyen la conversión a escala de grises, binarización, eliminación de bordes y comparación de la cantidad de píxeles en la imagen original y procesada.
El resultado del análisis se muestra en la interfaz gráfica y se determina si el paciente presenta signos de Alzheimer.
### Análisis de Imágenes (PET):
Para las imágenes de Tomografía por Emisión de Positrones (PET), también hay un conjunto de pasos de análisis que incluyen la conversión a escala de grises, binarización, eliminación de bordes y comparación de la cantidad de píxeles rojos en la imagen original y procesada.
El resultado del análisis se muestra en la interfaz gráfica y se determina si el paciente presenta signos de Alzheimer.
### Guardado de Resultados:
Hay un botón para guardar los resultados del análisis en un archivo de texto. La información incluye el nombre del paciente, número de identificación, fecha de nacimiento, fecha de realización del examen, tipo de imagen (TC o PET) y el resultado del análisis.
### Visualización de Imágenes:
La interfaz gráfica muestra las imágenes originales y procesadas, así como los resultados del análisis.
### Información de Proyecto:
La interfaz contiene información adicional, como el logo del proyecto y campos para ingresar el nombre del paciente, número de identificación, fecha de nacimiento y fecha de realización del examen.
