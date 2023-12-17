.class Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->deleteCropCache(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask$1;->this$1:Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "^crop_image\\.*\\.jpg$"

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
