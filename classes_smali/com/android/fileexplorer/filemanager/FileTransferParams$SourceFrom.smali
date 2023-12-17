.class public interface abstract annotation Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
.super Ljava/lang/Object;
.source "FileTransferParams.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/FileTransferParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SourceFrom"
.end annotation


# static fields
.field public static final EXTRA:I

.field public static final INNER:I

.field public static final MIRROR:I

.field public static final MIRROR_WINDOW:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;->EXTRA:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;->INNER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;->MIRROR:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;->MIRROR_WINDOW:I

    return-void
.end method
