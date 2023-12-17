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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLr0/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lr0/b$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr0/b$c;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr0/b$c;->b:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lr0/b$c;->c:Z

    iput-object p2, p0, Lr0/b$c;->d:Lr0/b$a;

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

    iget-object v0, p0, Lr0/b$c;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Lr0/b$c;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lr0/b$c;->d:Lr0/b$a;

    check-cast v2, Lr0/a$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ln0/c;

    invoke-virtual {p1, v0}, Ln0/c;->e(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lr0/b$c;->d:Lr0/b$a;

    check-cast p1, Lr0/a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ln0/c;

    invoke-virtual {p2, v1}, Ln0/c;->e(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_24

    return v2

    :cond_24
    const/4 v3, 0x1

    if-le p1, p2, :cond_28

    return v3

    :cond_28
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_34

    iget-boolean p1, p0, Lr0/b$c;->c:Z

    if-eqz p1, :cond_33

    move v2, v3

    :cond_33
    return v2

    :cond_34
    if-le p1, p2, :cond_3d

    iget-boolean p1, p0, Lr0/b$c;->c:Z

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    return v2

    :cond_3d
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_44

    return v2

    :cond_44
    if-le p1, p2, :cond_47

    return v3

    :cond_47
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_53

    iget-boolean p1, p0, Lr0/b$c;->c:Z

    if-eqz p1, :cond_52

    move v2, v3

    :cond_52
    return v2

    :cond_53
    if-le p1, p2, :cond_5c

    iget-boolean p1, p0, Lr0/b$c;->c:Z

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v3

    :goto_5b
    return v2

    :cond_5c
    const/4 p1, 0x0

    return p1
.end method
