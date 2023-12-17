.class public Lcom/android/fileexplorer/model/FileIconHelper$Builder;
.super Ljava/lang/Object;
.source "FileIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public defaultIcon:I

.field public ext:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public lastModified:J

.field public radius:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDefaultIcon(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/model/FileIconHelper$Builder;->defaultIcon:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/FileIconHelper$Builder;->ext:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/FileIconHelper$Builder;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/model/FileIconHelper$Builder;->lastModified:J

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/model/FileIconHelper$Builder;->radius:I

    return-void
.end method
