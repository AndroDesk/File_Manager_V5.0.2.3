.class public final La1/b;
.super La1/a;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/b$b;,
        La1/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/m;

.field public final b:La1/b$b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m;Landroidx/lifecycle/e0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, La1/a;-><init>()V

    .line 4
    iput-object p1, p0, La1/b;->a:Landroidx/lifecycle/m;

    .line 6
    new-instance p1, Landroidx/lifecycle/c0;

    .line 8
    sget-object v0, La1/b$b;->b:La1/b$b$a;

    .line 10
    invoke-direct {p1, p2, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/c0$b;)V

    .line 13
    const-class p2, La1/b$b;

    .line 15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, La1/b$b;

    .line 21
    iput-object p1, p0, La1/b;->b:La1/b$b;

    .line 23
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, La1/b;->b:La1/b$b;

    .line 3
    iget-object v1, v0, La1/b$b;->a:Landroidx/collection/g;

    .line 5
    iget v1, v1, Landroidx/collection/g;->c:I

    .line 7
    if-lez v1, :cond_6c

    .line 9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    const-string v1, "Loaders:"

    .line 14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "    "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, v0, La1/b$b;->a:Landroidx/collection/g;

    .line 36
    iget v3, v2, Landroidx/collection/g;->c:I

    .line 38
    if-gtz v3, :cond_28

    .line 40
    goto :goto_6c

    .line 41
    :cond_28
    const/4 v3, 0x0

    .line 42
    iget-object v2, v2, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 44
    aget-object v2, v2, v3

    .line 46
    check-cast v2, La1/b$a;

    .line 48
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    const-string p1, "  #"

    .line 53
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-object p1, v0, La1/b$b;->a:Landroidx/collection/g;

    .line 58
    iget-object p1, p1, Landroidx/collection/g;->a:[I

    .line 60
    aget p1, p1, v3

    .line 62
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    const-string p1, ": "

    .line 67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, La1/b$a;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    const-string p1, "mId="

    .line 82
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    const-string p1, " mArgs="

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    const/4 p1, 0x0

    .line 94
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string v0, "mLoader="

    .line 102
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 108
    throw p1

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const-string v1, "LoaderManager{"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " in "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, La1/b;->a:Landroidx/lifecycle/m;

    .line 31
    invoke-static {v0, v1}, La/b;->k(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 34
    const-string v1, "}}"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
