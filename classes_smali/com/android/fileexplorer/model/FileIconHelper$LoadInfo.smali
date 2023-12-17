.class Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;
.super Ljava/lang/Object;
.source "FileIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadInfo"
.end annotation


# instance fields
.field public defaultResIcon:I

.field public filePath:Ljava/lang/String;

.field public height:I

.field public mode:Ljava/lang/Object;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/model/FileIconHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;-><init>()V

    return-void
.end method
