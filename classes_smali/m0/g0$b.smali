.class public abstract Lm0/g0$b;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lm0/g0$b;->a:I

    .line 6
    iput-object p2, p0, Lm0/g0$b;->b:Ljava/lang/Class;

    .line 8
    iput p3, p0, Lm0/g0$b;->d:I

    .line 10
    iput p4, p0, Lm0/g0$b;->c:I

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_c

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_c

    .line 11
    move p0, v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move p0, v1

    .line 14
    :goto_d
    if-eqz p1, :cond_17

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_17

    .line 22
    move p1, v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move p1, v1

    .line 25
    :goto_18
    if-ne p0, p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v1

    .line 29
    :goto_1c
    return v0
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract c(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final d(Landroid/view/View;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    iget v1, p0, Lm0/g0$b;->c:I

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    if-eqz v0, :cond_10

    .line 12
    invoke-virtual {p0, p1}, Lm0/g0$b;->b(Landroid/view/View;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_10
    iget v0, p0, Lm0/g0$b;->a:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lm0/g0$b;->b:Ljava/lang/Class;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    return-object p1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final e(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    iget v1, p0, Lm0/g0$b;->c:I

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    if-eqz v0, :cond_f

    .line 12
    invoke-virtual {p0, p1, p2}, Lm0/g0$b;->c(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    goto :goto_44

    .line 16
    :cond_f
    invoke-virtual {p0, p1}, Lm0/g0$b;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, p2}, Lm0/g0$b;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_44

    .line 26
    invoke-static {p1}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_21

    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_30

    .line 34
    :cond_21
    instance-of v1, v0, Lm0/a$a;

    .line 36
    if-eqz v1, :cond_2a

    .line 38
    check-cast v0, Lm0/a$a;

    .line 40
    iget-object v0, v0, Lm0/a$a;->a:Lm0/a;

    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    new-instance v1, Lm0/a;

    .line 45
    invoke-direct {v1, v0}, Lm0/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 48
    move-object v0, v1

    .line 49
    :goto_30
    if-nez v0, :cond_37

    .line 51
    new-instance v0, Lm0/a;

    .line 53
    invoke-direct {v0}, Lm0/a;-><init>()V

    .line 56
    :cond_37
    invoke-static {p1, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 59
    iget v0, p0, Lm0/g0$b;->a:I

    .line 61
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    iget p2, p0, Lm0/g0$b;->d:I

    .line 66
    invoke-static {p2, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 69
    :cond_44
    :goto_44
    return-void
.end method

.method public abstract f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method
