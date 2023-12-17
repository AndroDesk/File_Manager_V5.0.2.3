.class public final Lr0/b$c;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Z

.field public final d:Lr0/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLr0/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lr0/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lr0/b$c;->a:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v0, p0, Lr0/b$c;->b:Landroid/graphics/Rect;

    .line 18
    iput-boolean p1, p0, Lr0/b$c;->c:Z

    .line 20
    iput-object p2, p0, Lr0/b$c;->d:Lr0/b$a;

    .line 22
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr0/b$c;->a:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Lr0/b$c;->b:Landroid/graphics/Rect;

    .line 5
    iget-object v2, p0, Lr0/b$c;->d:Lr0/b$a;

    .line 7
    check-cast v2, Lr0/a$a;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    check-cast p1, Ln0/c;

    .line 14
    invoke-virtual {p1, v0}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 17
    iget-object p1, p0, Lr0/b$c;->d:Lr0/b$a;

    .line 19
    check-cast p1, Lr0/a$a;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    check-cast p2, Ln0/c;

    .line 26
    invoke-virtual {p2, v1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    .line 29
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 31
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 33
    const/4 v2, -0x1

    .line 34
    if-ge p1, p2, :cond_24

    .line 36
    return v2

    .line 37
    :cond_24
    const/4 v3, 0x1

    .line 38
    if-le p1, p2, :cond_28

    .line 40
    return v3

    .line 41
    :cond_28
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 43
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 45
    if-ge p1, p2, :cond_34

    .line 47
    iget-boolean p1, p0, Lr0/b$c;->c:Z

    .line 49
    if-eqz p1, :cond_33

    .line 51
    move v2, v3

    .line 52
    :cond_33
    return v2

    .line 53
    :cond_34
    if-le p1, p2, :cond_3d

    .line 55
    iget-boolean p1, p0, Lr0/b$c;->c:Z

    .line 57
    if-eqz p1, :cond_3b

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v2, v3

    .line 61
    :goto_3c
    return v2

    .line 62
    :cond_3d
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    if-ge p1, p2, :cond_44

    .line 68
    return v2

    .line 69
    :cond_44
    if-le p1, p2, :cond_47

    .line 71
    return v3

    .line 72
    :cond_47
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 74
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 76
    if-ge p1, p2, :cond_53

    .line 78
    iget-boolean p1, p0, Lr0/b$c;->c:Z

    .line 80
    if-eqz p1, :cond_52

    .line 82
    move v2, v3

    .line 83
    :cond_52
    return v2

    .line 84
    :cond_53
    if-le p1, p2, :cond_5c

    .line 86
    iget-boolean p1, p0, Lr0/b$c;->c:Z

    .line 88
    if-eqz p1, :cond_5a

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v2, v3

    .line 92
    :goto_5b
    return v2

    .line 93
    :cond_5c
    const/4 p1, 0x0

    .line 94
    return p1
.end method
