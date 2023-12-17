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
.field public static final DIALOG_TYPE_CUSTOM:I

.field public static final DIALOG_TYPE_HOME:I

.field public static final DIALOG_TYPE_RECENT:I


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/constant/DisplayConstant;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$DialogType;->DIALOG_TYPE_CUSTOM:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/constant/DisplayConstant$DialogType;->DIALOG_TYPE_HOME:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/constant/DisplayConstant;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/constant/DisplayConstant$DialogType;->this$0:Lcom/android/fileexplorer/constant/DisplayConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
