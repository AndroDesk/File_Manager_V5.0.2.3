.class Lcom/android/fileexplorer/fragment/MoreAppFragment$2;
.super Ljava/lang/Object;
.source "MoreAppFragment.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/MoreAppFragment;->getMiShareTag()Lcom/android/fileexplorer/dao/file/AppTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$2;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method
