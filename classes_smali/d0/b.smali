.class public final Ld0/b;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld0/e$a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld0/e$a;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld0/b;->a:Ld0/e$a;

    .line 3
    iput-object p2, p0, Ld0/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld0/b;->a:Ld0/e$a;

    .line 3
    iget-object v1, p0, Ld0/b;->b:Ljava/lang/Object;

    .line 5
    iput-object v1, v0, Ld0/e$a;->a:Ljava/lang/Object;

    .line 7
    return-void
.end method
