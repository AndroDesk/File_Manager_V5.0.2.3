.class public Lcom/android/fileexplorer/constant/DisplayConstant$DialogType;
.super Ljava/lang/Object;
.source "DisplayConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/constant/DisplayConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogType"
.end annotation


# static fields
.field public static final DIALOG_TYPE_CUSTOM:I = 0x2

.field public static final DIALOG_TYPE_HOME:I = 0x1

.field public static final DIALOG_TYPE_RECENT:I


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/constant/DisplayConstant;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/constant/DisplayConstant;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/constant/DisplayConstant$DialogType;->this$0:Lcom/android/fileexplorer/constant/DisplayConstant;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
