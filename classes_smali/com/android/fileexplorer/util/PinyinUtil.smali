.class public Lcom/android/fileexplorer/util/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_27

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 34
    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
