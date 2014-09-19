export class User implements UserInterface
{
    constructor (private name: string, private email: string, private id: number)
    {
        this.name = name;
        this.email = email;
        this.id = id;
    }

    getName():string {
        return this.name;
    }

    getEmail():string {
        return this.email;
    }

    getId():number {
        return this.id;
    }
}
