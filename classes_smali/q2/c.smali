.class public final Lq2/c;
.super Lq2/a;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lq2/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final b:Ll2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/d<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li2/e;Lcom/android/fileexplorer/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    .line 4
    iput-object p2, p0, Lq2/c;->b:Ll2/d;

    .line 6
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/a;->a:Li2/e;

    .line 3
    new-instance v1, Lq2/c$a;

    .line 5
    iget-object v2, p0, Lq2/c;->b:Ll2/d;

    .line 7
    invoke-direct {v1, p1, v2}, Lq2/c$a;-><init>(Li2/h;Ll2/d;)V

    .line 10
    invoke-virtual {v0, v1}, Li2/e;->c(Li2/h;)V

    .line 13
    return-void
.end method
