.class Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;
.super Ljava/lang/Object;
.source "MirrorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->title:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->icon:Landroid/graphics/Bitmap;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    .line 10
    return-void
.end method
