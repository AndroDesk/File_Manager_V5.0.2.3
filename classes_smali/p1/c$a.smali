.class public final Lp1/c$a;
.super Ljava/lang/Object;
.source "IKssDownloadRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp1/c$a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lp1/c$a;->b:[Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lp1/c$a;->c:J

    .line 10
    return-void
.end method
