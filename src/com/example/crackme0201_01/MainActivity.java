package com.example.crackme0201_01;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;


public class MainActivity extends Activity {

	private EditText edit_userName;
	private EditText edit_sn;
	private Button btn_register;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        edit_userName = (EditText)findViewById(R.id.editText1);
        edit_sn = (EditText)findViewById(R.id.editText2);
        btn_register = (Button)findViewById(R.id.button1);
  
        btn_register.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.d("MainActivity", "onClick");
				if (!checkSN(
						edit_userName.getText().toString().trim(),
						edit_sn.getText().toString().trim())) {
					Toast.makeText(MainActivity.this, R.string.unsuccessed, Toast.LENGTH_SHORT).show();
				} else {
					Toast.makeText(MainActivity.this, R.string.successed, Toast.LENGTH_SHORT).show();
				}
			}
		});
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    
    private boolean checkSN(String userName, String sn) {
    	
    	if ((userName == null) || (userName.length() == 0))
    		return false;
    	
    	if ((sn == null) || (sn.length() == 0))
    		return false;
    	
    	try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			digest.reset();
			digest.update(userName.getBytes());
			byte bytes[] = digest.digest();
			String hexstr = new String(bytes);
			Log.d("MainActivity", hexstr);
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < hexstr.length(); i+=2) {
				sb.append(hexstr.charAt(i));
			}
			String userSN = sb.toString();
			Log.d("MainActivity", userSN);
			
			if (!userSN.equalsIgnoreCase(sn)) {
				return false;
			}
			return true;
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    	return false;
    }
}
