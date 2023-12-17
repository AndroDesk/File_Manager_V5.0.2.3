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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNavigatorInfo(I)Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    packed-switch p1, :pswitch_data_26

    const/4 p1, 0x0

    return-object p1

    :pswitch_c  #0x3ea
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_11  #0x3e9
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_16  #0x3e8
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_1a
    new-instance v1, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    return-object v1

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_16  #000003e8
        :pswitch_11  #000003e9
        :pswitch_c  #000003ea
    .end packed-switch
.end method
