.class public final Lv1/e;
.super Ljava/lang/Object;
.source "HttpClientDownload.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lv1/e;->a:Z

    .line 7
    iput v0, p0, Lv1/e;->b:I

    .line 9
    iput v0, p0, Lv1/e;->c:I

    .line 11
    iput v0, p0, Lv1/e;->d:I

    .line 13
    iput v0, p0, Lv1/e;->e:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lv1/e;->a:Z

    .line 3
    return v0
.end method
