.class public final Landroidx/collection/a$f;
.super Landroidx/collection/c;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/collection/a;


# direct methods
.method public constructor <init>(Landroidx/collection/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/collection/a$f;->d:Landroidx/collection/a;

    .line 3
    iget p1, p1, Landroidx/collection/f;->mSize:I

    .line 5
    invoke-direct {p0, p1}, Landroidx/collection/c;-><init>(I)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a$f;->d:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/collection/a$f;->d:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 6
    return-void
.end method
