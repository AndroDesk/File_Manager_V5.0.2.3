.class Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$ActionRun;
.super Ljava/lang/Object;
.source "FileOpMultiChoiceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionRun"
.end annotation


# instance fields
.field public actionId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$ActionRun;->actionId:I

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
