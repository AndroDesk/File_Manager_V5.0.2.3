.class public final Lm4/n;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lo1/a;

.field public c:Lm4/d;

.field public d:Lm4/j;

.field public e:Lm4/k;

.field public f:Z

.field public g:J

.field public h:Ljava/io/File;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm4/n;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lo1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo1/a;-><init>(I)V

    iput-object v0, p0, Lm4/n;->b:Lo1/a;

    new-instance v0, Lm4/d;

    invoke-direct {v0}, Lm4/d;-><init>()V

    iput-object v0, p0, Lm4/n;->c:Lm4/d;

    new-instance v0, Lm4/j;

    invoke-direct {v0}, Lm4/j;-><init>()V

    iput-object v0, p0, Lm4/n;->d:Lm4/j;

    new-instance v0, Lm4/k;

    invoke-direct {v0}, Lm4/k;-><init>()V

    iput-object v0, p0, Lm4/n;->e:Lm4/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm4/n;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm4/n;->g:J

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
