using System;

public class Test : IDisposable {

	int A { get; set; }

	public struct SomeStruct {
		public int x;

		public static SomeStruct operator+(SomeStruct s, int a) {
			return s;
		}
	}

	void Start () {

		// this is normal comment
		/// this is doc comment

		var x = @"this is string";

		this.A = -1234;

		if (true) { }

		for (;;) { }

		foreach (char c in x) {	}

		switch (0) { default: break; }

		try { } catch { }

		this.Start ();

		return;
	}
}