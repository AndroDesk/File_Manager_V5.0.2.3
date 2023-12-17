.class public Lcom/miui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;,
        Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;,
        Lcom/miui/maml/util/ConfigFile$Gadget;,
        Lcom/miui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field private static final METHOD:Ljava/lang/String; = "saveConfigFile"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"

.field private static final URI:Ljava/lang/String; = "content://com.miui.maml.provider"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveViaProvider:Z

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 25
    :cond_18
    return-void
.end method

.method private load(Ljava/lang/String;Z)Z
    .registers 6

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1d

    .line 6
    :try_start_13
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_23

    :cond_1d
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_23
    if-nez p1, :cond_2b

    if-eqz p1, :cond_2a

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_6f

    :cond_2a
    return v1

    .line 8
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_61

    if-nez p2, :cond_3f

    if-eqz p1, :cond_3e

    .line 11
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_6f

    :cond_3e
    return v1

    .line 12
    :cond_3f
    :try_start_3f
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_61

    if-nez v0, :cond_51

    if-eqz p1, :cond_50

    .line 13
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_6f

    :cond_50
    return v1

    .line 14
    :cond_51
    :try_start_51
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 15
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_61

    const/4 p2, 0x1

    if-eqz p1, :cond_60

    .line 17
    :try_start_5d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_6f

    :cond_60
    return p2

    :catchall_61
    move-exception p2

    .line 18
    :try_start_62
    throw p2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    if-eqz p1, :cond_6e

    .line 19
    :try_start_66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    :try_start_6b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$4;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 6
    const-string v1, "Gadgets"

    .line 8
    const-string v2, "Gadget"

    .line 10
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 13
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V
    .registers 8

    .line 1
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    :goto_c
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 16
    move-result v0

    .line 17
    if-ge p2, v0, :cond_2f

    .line 19
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_2c

    .line 30
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2c

    .line 40
    check-cast v0, Lorg/w3c/dom/Element;

    .line 42
    invoke-interface {p4, v0}, Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 45
    :cond_2c
    add-int/lit8 p2, p2, 0x1

    .line 47
    goto :goto_c

    .line 48
    :cond_2f
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$3;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$3;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 6
    const-string v1, "Tasks"

    .line 8
    const-string v2, "Intent"

    .line 10
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 13
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$2;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 6
    const-string v1, "Variables"

    .line 8
    const-string v2, "Variable"

    .line 10
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 13
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_38

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_38

    .line 14
    :cond_d
    const-string v0, "string"

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1e

    .line 22
    const-string v0, "number"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 39
    if-nez v0, :cond_34

    .line 41
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 43
    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile$Variable;-><init>()V

    .line 46
    iput-object p1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 50
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_34
    iput-object p3, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v0, "Gadgets"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 16
    const-string v2, "path"

    .line 18
    const-string v3, "x"

    .line 20
    const-string v4, "y"

    .line 22
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v4, :cond_4a

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/miui/maml/util/ConfigFile$Gadget;

    .line 45
    const/4 v6, 0x3

    .line 46
    new-array v6, v6, [Ljava/lang/String;

    .line 48
    iget-object v7, v4, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    .line 50
    aput-object v7, v6, v1

    .line 52
    iget v7, v4, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 54
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    aput-object v7, v6, v5

    .line 60
    const/4 v7, 0x2

    .line 61
    iget v4, v4, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    .line 63
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v6, v7

    .line 69
    const-string v4, "Gadget"

    .line 71
    invoke-static {p1, v4, v2, v6, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 74
    goto :goto_1f

    .line 75
    :cond_4a
    invoke-static {p1, v0, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "<"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_c

    const-string p2, "/"

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "<"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 8
    :goto_9
    array-length v0, p2

    if-ge p1, v0, :cond_33

    if-eqz p4, :cond_17

    .line 9
    aget-object v0, p3, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_30

    :cond_17
    const-string v0, " "

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_33
    const-string p1, "/>\n"

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v0, "Tasks"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 16
    const/4 v2, 0x7

    .line 17
    new-array v3, v2, [Ljava/lang/String;

    .line 19
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    .line 21
    aput-object v4, v3, v1

    .line 23
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    .line 25
    const/4 v5, 0x1

    .line 26
    aput-object v4, v3, v5

    .line 28
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    .line 30
    const/4 v6, 0x2

    .line 31
    aput-object v4, v3, v6

    .line 33
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    .line 35
    const/4 v7, 0x3

    .line 36
    aput-object v4, v3, v7

    .line 38
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    .line 40
    const/4 v8, 0x4

    .line 41
    aput-object v4, v3, v8

    .line 43
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    .line 45
    const/4 v9, 0x5

    .line 46
    aput-object v4, v3, v9

    .line 48
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    .line 50
    const/4 v10, 0x6

    .line 51
    aput-object v4, v3, v10

    .line 53
    iget-object v4, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 55
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v4

    .line 63
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_6e

    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Lcom/miui/maml/util/Task;

    .line 75
    new-array v12, v2, [Ljava/lang/String;

    .line 77
    iget-object v13, v11, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 79
    aput-object v13, v12, v1

    .line 81
    iget-object v13, v11, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 83
    aput-object v13, v12, v5

    .line 85
    iget-object v13, v11, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 87
    aput-object v13, v12, v6

    .line 89
    iget-object v13, v11, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 91
    aput-object v13, v12, v7

    .line 93
    iget-object v13, v11, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 95
    aput-object v13, v12, v8

    .line 97
    iget-object v13, v11, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 99
    aput-object v13, v12, v9

    .line 101
    iget-object v11, v11, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    .line 103
    aput-object v11, v12, v10

    .line 105
    const-string v11, "Intent"

    .line 107
    invoke-static {p1, v11, v3, v12, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 110
    goto :goto_3e

    .line 111
    :cond_6e
    invoke-static {p1, v0, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v0, "Variables"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 16
    const-string v2, "name"

    .line 18
    const-string v3, "type"

    .line 20
    const-string v4, "value"

    .line 22
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v3

    .line 36
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v4, :cond_46

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 49
    const/4 v6, 0x3

    .line 50
    new-array v6, v6, [Ljava/lang/String;

    .line 52
    iget-object v7, v4, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 54
    aput-object v7, v6, v1

    .line 56
    iget-object v7, v4, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 58
    aput-object v7, v6, v5

    .line 60
    const/4 v5, 0x2

    .line 61
    iget-object v4, v4, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 63
    aput-object v4, v6, v5

    .line 65
    const-string v4, "Variable"

    .line 67
    invoke-static {p1, v4, v2, v6}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    goto :goto_23

    .line 71
    :cond_46
    invoke-static {p1, v0, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/util/Task;

    .line 9
    return-object p1
.end method

.method public getTasks()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 9
    if-nez p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 15
    :goto_e
    return-object p1
.end method

.method public getVariables()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public loadByIconStream(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_19

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Config"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_19

    .line 16
    :cond_f
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 21
    const-string v1, "Group"

    .line 23
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public moveGadget(Lcom/miui/maml/util/ConfigFile$Gadget;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    :cond_d
    return-void
.end method

.method public putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 12
    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .registers 4

    .line 3
    invoke-static {p2, p3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "number"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "string"

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 9
    return-void
.end method

.method public putTask(Lcom/miui/maml/util/Task;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_15

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 14
    iget-object v1, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public removeGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 9
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9

    const-string v0, "ConfigFile"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config"

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 6
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 9
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 10
    iget-boolean v2, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    if-eqz v2, :cond_2f

    .line 11
    new-instance v0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;-><init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4

    .line 12
    :cond_2f
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 13
    :try_start_33
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_72

    :catch_37
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create target file or temp file failed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_4d
    move-exception v5

    .line 15
    :try_start_4e
    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "temp"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    .line 17
    :cond_6f
    invoke-direct {p0, v2}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_72} :catch_c3

    .line 18
    :goto_72
    :try_start_72
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_85

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 20
    :cond_85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a7

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v2, p1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_a3} :catch_ad

    .line 24
    :goto_a3
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v4

    :cond_a7
    :try_start_a7
    const-string p1, "target file and temp file are not exists"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_ad

    return v3

    :catch_ad
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write file error"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 27
    :catch_c3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create target file failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setSaveViaProvider(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    .line 3
    return-void
.end method
