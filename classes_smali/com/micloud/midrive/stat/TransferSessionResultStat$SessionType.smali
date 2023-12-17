.class public Lcom/micloud/midrive/stat/TransferSessionResultStat$SessionType;
.super Ljava/lang/Object;
.source "TransferSessionResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/TransferSessionResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionType"
.end annotation


# static fields
.field public static final DOWNLOAD_SESSION:Ljava/lang/String; = "downloadSession"

.field public static final UPLOAD_SESSION:Ljava/lang/String; = "uploadSession"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
