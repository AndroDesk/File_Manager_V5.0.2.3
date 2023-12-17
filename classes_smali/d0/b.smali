.class public final Ld0/b;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld0/e$a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ld0/e$a;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld0/b;->a:Ld0/e$a;

    iput-object p2, p0, Ld0/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ld0/b;->a:Ld0/e$a;

    iget-object v1, p0, Ld0/b;->b:Ljava/lang/Object;

    iput-object v1, v0, Ld0/e$a;->a:Ljava/lang/Object;

    return-void
.end method
