<p align='center'>
<img src="libftm.png">
</p>

# Libft
This is my first project as a cadet at <a href ="https://www.42sp.org.br/">42 - São Paulo</a> with my own C library implementations of functions, manipulating memory, string and linked lists.

---

## This library is separate in 3 parts:
### [First Part](./src/FIRST_PART.md)
In this first part, I re-code a set of the libc functions, as defined in their
man. My functions have the same prototype and behaviors as the originals.

---

### [Second Part](./src/SECOND_PART.md)
In this second part, I code a set of functions that are either not included in the
libc, or included in a different form.

---

### [Bonus Part](./src/BONUS_PART.md)
In this bonus part, I use the following structure to represent the elements of my list.
This structure must be added to my libft.h file.
```c
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}	
```
content : The data contained in the element. The void * allows to store any kind
of data.<br>
next : The next element’s address or NULL if it’s the last element.

---
# How to use

This program creates a library libft.a:
```bash
git clone https://github.com/katudda/Libft.git
cd libft/src
make
```
You can find descriptions of the use of all functions in the follow READMEs:
 - [First Part](./src/FIRST_PART.md)
 - [Second Part](./src/SECOND_PART.md)
 - [Bonus Part](./src/BONUS_PART.md)

## Contributing
Everyone can contribute to libft. Just send me a email, I will add you to contributors.

