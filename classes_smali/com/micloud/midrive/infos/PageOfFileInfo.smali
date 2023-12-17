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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->hasMore:Z

    iput-object p2, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->fileInfos:Ljava/util/List;

    iput p3, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->page:I

    iput p4, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->allCount:I

    iput-object p5, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->order:Ljava/lang/String;

    iput-object p6, p0, Lcom/micloud/midrive/infos/PageOfFileInfo;->dataFrom:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    return-void
.end method
