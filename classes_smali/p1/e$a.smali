.class public final Lp1/e$a;
.super Ljava/lang/Object;
.source "IKssUploadRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp1/e$a;->a:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lp1/e$a;->b:Z

    .line 8
    return-void
.end method
