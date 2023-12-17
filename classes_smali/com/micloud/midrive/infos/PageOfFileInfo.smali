.class public Lcom/micloud/midrive/infos/PageOfFileInfo;
.super Ljava/lang/Object;
.source "PageOfFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;
    }
.end annotation


# instance fields
.field public final allCount:I

.field public final dataFrom:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

.field public final fileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final order:Ljava/lang/String;

.field public final page:I


# direct methods
.method public constructor <init>(ZLjava/util/List;IILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileInfo;",
            ">;II",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->hasMore:Z

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->fileInfos:Ljava/util/List;

    .line 8
    iput p3, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->page:I

    .line 10
    iput p4, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->allCount:I

    .line 12
    iput-object p5, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->order:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->dataFrom:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    .line 16
    return-void
.end method
