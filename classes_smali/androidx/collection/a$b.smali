.class public final Landroidx/collection/a$b;
.super Landroidx/collection/c;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/c<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/collection/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/collection/a;)V
    .registers 2

    iput-object p1, p0, Landroidx/collection/a$b;->d:Landroidx/collection/a;

    iget p1, p1, Landroidx/collection/f;->mSize:I

    invoke-direct {p0, p1}, Landroidx/collection/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/a$b;->d:Landroidx/collection/a;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Landroidx/collection/a$b;->d:Landroidx/collection/a;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    return-void
.end method
