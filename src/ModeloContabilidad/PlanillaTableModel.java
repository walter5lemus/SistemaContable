
package ModeloContabilidad;

import ModeloContabilidad.Empleado;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;

public class PlanillaTableModel extends AbstractTableModel {
    public List<Empleado> empleados = new ArrayList<Empleado>();

    @Override
    public int getRowCount() {
        return empleados.size();
    }

    @Override
    public int getColumnCount() {
        return 3;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Empleado empleado = empleados.get(rowIndex);
        Object valor = null;
        
        switch(columnIndex) {
            case 0: valor = empleado.getCodigo();
                break;
            case 1: valor = empleado.getNombre();
                break;
            case 2: valor = empleado.getSalario();
                break;
        }
        return valor;
    }
}
