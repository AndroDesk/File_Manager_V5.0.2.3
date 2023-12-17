.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$1;
.super Ljava/lang/Object;
.source "PrivateFolderActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$1;->this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, ".lock_"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
