.class public abstract Lo1/g;
.super Lo1/f;
.source "PartBase.java"


# instance fields
.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lo1/f;-><init>()V

    if-eqz p1, :cond_e

    iput-object p1, p0, Lo1/g;->j:Ljava/lang/String;

    iput-object p2, p0, Lo1/g;->k:Ljava/lang/String;

    iput-object p3, p0, Lo1/g;->l:Ljava/lang/String;

    iput-object p4, p0, Lo1/g;->m:Ljava/lang/String;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo1/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo1/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo1/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo1/g;->m:Ljava/lang/String;

    return-object v0
.end method
