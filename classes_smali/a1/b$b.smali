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

    new-instance v0, La1/b$b$a;

    invoke-direct {v0}, La1/b$b$a;-><init>()V

    sput-object v0, La1/b$b;->b:La1/b$b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Landroidx/collection/g;

    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    iput-object v0, p0, La1/b$b;->a:Landroidx/collection/g;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .registers 7

    invoke-super {p0}, Landroidx/lifecycle/a0;->onCleared()V

    iget-object v0, p0, La1/b$b;->a:Landroidx/collection/g;

    iget v1, v0, Landroidx/collection/g;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gtz v1, :cond_18

    iget-object v4, v0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    move v5, v3

    :goto_e
    if-ge v5, v1, :cond_15

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_15
    iput v3, v0, Landroidx/collection/g;->c:I

    return-void

    :cond_18
    iget-object v0, v0, Landroidx/collection/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, La1/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v2
.end method
