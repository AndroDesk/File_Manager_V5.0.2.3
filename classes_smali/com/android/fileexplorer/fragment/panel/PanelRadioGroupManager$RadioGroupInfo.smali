.class public Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;
.super Ljava/lang/Object;
.source "PanelRadioGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioGroupInfo"
.end annotation


# instance fields
.field private size:I

.field private startIndex:I

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->this$0:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->startIndex:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->size:I

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->startIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->size:I

    .line 3
    return p0
.end method
