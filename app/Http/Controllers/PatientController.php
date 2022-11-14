<?php

namespace App\Http\Controllers;

use App\Models\Patient;
use Illuminate\Http\Request;

class PatientController extends Controller
{
    // Get All Resource
    public function index()
    {
        // eloquent all
        $patients = Patient::all();

        if ($patients) {
            $data = [
                'message' => 'Get All Resource',
                'data' => $patients,
            ];
    
            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Data is empty'
            ];

            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        }
    }

    // Add Resource
    public function store(Request $request)
    {
        // menangkap data request dan validation
        $validate = $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'status' => 'required',
            'in_date_at' => 'required|date',
            'out_date_at' => 'nullable|date',
        ]);

        // eloquent create
        $patients = Patient::create($validate);

        $data = [
            'message' => 'Resource is added successfully',
            'data' => $patients,
        ];

        // mengembalikan data (json) status code 201
        return response()->json($data, 201);
    }

    // Get Detail Resource
    public function show($id)
    {
        // eloquent find
        $patients = Patient::find($id);

        if ($patients) {
            $data = [
                'message' => 'Get Detail Resource',
                'data' => $patients,
            ];
    
            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource not found'
            ];

            // mengembalikan data (json) status code 404
            return response()->json($data, 404);
        }
    }

    // Edit Resource
    public function update(Request $request, $id)
    {
        // eloquent find
        $patients = Patient::find($id);

        if ($patients) {
            // menangkap data request
            $input = [
                'name' => $request->name ?? $patients->name,
                'phone' => $request->phone ?? $patients->phone,
                'address' => $request->address ?? $patients->address,
                'status' => $request->status ?? $patients->status,
                'in_date_at' => $request->in_date_at ?? $patients->in_date_at,
                'out_date_at' => $request->out_date_at ?? $patients->out_date_at,
            ];

            // eloquent update
            $patients->update($input);
    
            $data = [
                'message' => 'Resource is update successfully',
                'data' => $patients,
            ];

            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource not found'
            ];

            // mengembalikan data (json) status code 404
            return response()->json($data, 404);
        }
    }

    // Delete Resource
    public function destroy($id)
    {
        // eloquent find
        $patients = Patient::find($id);

        if ($patients) {
            // eloquent delete
            $patients->delete();

            $data = [
                'message' => 'Resource is delete successfully',
                'data' => $patients
            ];

            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource not found'
            ];

            // mengembalikan data (json) status code 404
            return response()->json($data, 404);
        }
    }

    // Search Resource by name
    public function search($name)
    {
        // eloquent where & get
        $patients = Patient::where('name','Like', "%$name%")->get();

        if ($patients) {
            $data = [
                'message' => 'Get searched resource',
                'data' => $patients,
            ];
    
            // mengembalikan data (json) status code 200
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource not found'
            ];

            // mengembalikan data (json) status code 404
            return response()->json($data, 404);
        }
    }

    // Get Positive Resource
    public function positive()
    {
        // eloquent where, get & count
        $positivePatient = Patient::where('status', '=', 'Positive')->get();
        $total = $positivePatient->count();

        $data = [
            'message' => 'Get positive resource',
            'total' => $total,
            'data' => $positivePatient,
        ];
        
        // mengembalikan data (json) status code 200
        return response()->json($data, 200);
    }

    // Get Recovered Resource
    public function recovered()
    {
        // eloquent where, get & count
        $recoveredPatient = Patient::where('status', '=', 'Recovered')->get();
        $total = $recoveredPatient->count();

        $data = [
            'message' => 'Get recovered resource',
            'total' => $total,
            'data' => $recoveredPatient,
        ];
        
        // mengembalikan data (json) status code 200
        return response()->json($data, 200);
    }

    // Get Dead Resource
    public function dead()
    {
        // eloquent where, get & count
        $deadPatient = Patient::where('status', '=', 'Dead')->get();
        $total = $deadPatient->count();

        $data = [
            'message' => 'Get dead resource',
            'total' => $total,
            'data' => $deadPatient,
        ];
        
        // mengembalikan data (json) status code 200
        return response()->json($data, 200);
    }
}
