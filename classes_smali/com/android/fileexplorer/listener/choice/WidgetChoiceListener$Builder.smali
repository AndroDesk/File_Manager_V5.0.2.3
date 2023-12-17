.class public Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
.super Ljava/lang/Object;
.source "WidgetChoiceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 7
    iget-object v2, v2, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 12
    iput-object v1, v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 16
    return-object v0
.end method

.method public setActivity(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    iput-object p1, v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    return-object p0
.end method

.method public setAdapter(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    iput-object p1, v0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 5
    return-object p0
.end method

.method public setCategoryName(Ljava/lang/String;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    iput-object p1, v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->cateGoryName:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setFragment(Lmiuix/appcompat/app/Fragment;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    iput-object p1, v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 5
    return-object p0
.end method

.method public setOnClickListener(Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->listener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 3
    iput-object p1, v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;->widgetChoiceOnClickListener:Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;

    .line 5
    return-object p0
.end method
