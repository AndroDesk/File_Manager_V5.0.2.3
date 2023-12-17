.class public final Landroidx/collection/b$a;
.super Landroidx/collection/c;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/collection/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/collection/b;)V
    .registers 2

    iput-object p1, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    iget p1, p1, Landroidx/collection/b;->c:I

    invoke-direct {p0, p1}, Landroidx/collection/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    iget-object v0, v0, Landroidx/collection/b;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Landroidx/collection/b$a;->d:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->e(I)V

    return-void
.end method
