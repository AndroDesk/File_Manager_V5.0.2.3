.class public final Lj0/g;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lj0/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lj0/f;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj0/g;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lj0/g;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lj0/g;->c:Lj0/f;

    .line 7
    iput p4, p0, Lj0/g;->d:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lj0/g;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lj0/g;->b:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lj0/g;->c:Lj0/f;

    .line 7
    iget v3, p0, Lj0/g;->d:I

    .line 9
    invoke-static {v0, v1, v2, v3}, Lj0/k;->a(Ljava/lang/String;Landroid/content/Context;Lj0/f;I)Lj0/k$a;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
