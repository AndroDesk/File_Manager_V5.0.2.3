.class public final Lq2/b;
.super Lq2/a;
.source "ObservableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq2/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ll2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/c<",
            "-",
            "Lk2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll2/a;


# direct methods
.method public constructor <init>(Li2/e;Lcom/android/fileexplorer/util/a;Lcom/android/cloud/fragment/model/g;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    .line 4
    iput-object p2, p0, Lq2/b;->b:Ll2/c;

    .line 6
    iput-object p3, p0, Lq2/b;->c:Ll2/a;

    .line 8
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/a;->a:Li2/e;

    .line 3
    new-instance v1, Lp2/b;

    .line 5
    iget-object v2, p0, Lq2/b;->b:Ll2/c;

    .line 7
    iget-object v3, p0, Lq2/b;->c:Ll2/a;

    .line 9
    invoke-direct {v1, p1, v2, v3}, Lp2/b;-><init>(Li2/h;Ll2/c;Ll2/a;)V

    .line 12
    invoke-virtual {v0, v1}, Li2/e;->c(Li2/h;)V

    .line 15
    return-void
.end method
