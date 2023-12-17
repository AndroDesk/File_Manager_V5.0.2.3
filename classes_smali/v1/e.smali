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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/e;->a:Z

    iput v0, p0, Lv1/e;->b:I

    iput v0, p0, Lv1/e;->c:I

    iput v0, p0, Lv1/e;->d:I

    iput v0, p0, Lv1/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lv1/e;->a:Z

    return v0
.end method
