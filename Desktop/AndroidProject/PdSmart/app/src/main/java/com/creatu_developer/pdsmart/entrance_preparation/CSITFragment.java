package com.creatu_developer.pdsmart.entrance_preparation;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


import com.creatu_developer.pdsmart.R;

/**
 * A simple {@link Fragment} subclass.
 */
public class CSITFragment extends Fragment {


    public CSITFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_ielts, container, false);
    }

}
