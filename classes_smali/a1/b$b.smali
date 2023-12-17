.class public final La1/b$b;
.super Landroidx/lifecycle/a0;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final b:La1/b$b$a;


# instance fields
.field public a:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "La1/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, La1/b$b$a;

    .line 3
    invoke-direct {v0}, La1/b$b$a;-><init>()V

    .line 6
    sput-object v0, La1/b$b;->b:La1/b$b$a;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/g;

    .line 6
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 9
    iput-object v0, p0, La1/b$b;->a:Landroidx/collection/g;

    .line 11
    return-void
.end method


# virtual methods
.method public final onCleared()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/a0;->onCleared()V

    .line 4
    iget-object v0, p0, La1/b$b;->a:Landroidx/collection/g;

    .line 6
    iget v1, v0, Landroidx/collection/g;->c:I

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-gtz v1, :cond_18

    .line 12
    iget-object v4, v0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 14
    move v5, v3

    .line 15
    :goto_e
    if-ge v5, v1, :cond_15

    .line 17
    aput-object v2, v4, v5

    .line 19
    add-int/lit8 v5, v5, 0x1

    .line 21
    goto :goto_e

    .line 22
    :cond_15
    iput v3, v0, Landroidx/collection/g;->c:I

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v0, v0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    .line 27
    aget-object v0, v0, v3

    .line 29
    check-cast v0, La1/b$a;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    throw v2
.end method
