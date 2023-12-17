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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lm4/n;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Lo1/a;

    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-direct {v0, v1}, Lo1/a;-><init>(I)V

    .line 22
    iput-object v0, p0, Lm4/n;->b:Lo1/a;

    .line 24
    new-instance v0, Lm4/d;

    .line 26
    invoke-direct {v0}, Lm4/d;-><init>()V

    .line 29
    iput-object v0, p0, Lm4/n;->c:Lm4/d;

    .line 31
    new-instance v0, Lm4/j;

    .line 33
    invoke-direct {v0}, Lm4/j;-><init>()V

    .line 36
    iput-object v0, p0, Lm4/n;->d:Lm4/j;

    .line 38
    new-instance v0, Lm4/k;

    .line 40
    invoke-direct {v0}, Lm4/k;-><init>()V

    .line 43
    iput-object v0, p0, Lm4/n;->e:Lm4/k;

    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lm4/n;->i:Z

    .line 48
    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lm4/n;->g:J

    .line 52
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
