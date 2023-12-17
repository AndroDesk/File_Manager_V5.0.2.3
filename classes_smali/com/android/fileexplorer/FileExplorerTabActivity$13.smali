.class Lcom/android/fileexplorer/FileExplorerTabActivity$13;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateNavigatorInfo(I)Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 8
    packed-switch p1, :pswitch_data_26

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :pswitch_c  #0x3ea
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    goto :goto_1a

    .line 18
    :pswitch_11  #0x3e9
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    goto :goto_1a

    .line 23
    :pswitch_16  #0x3e8
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    :goto_1a
    new-instance v1, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 31
    invoke-virtual {v2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, p1, v2, v0}, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 38
    return-object v1

    .line 39
    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_16  #000003e8
        :pswitch_11  #000003e9
        :pswitch_c  #000003ea
    .end packed-switch
.end method
