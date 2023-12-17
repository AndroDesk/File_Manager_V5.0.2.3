.class Lcom/miui/maml/data/SettingsBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Variable"
.end annotation


# instance fields
.field public mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/data/SettingsBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 6
    const-string p1, "category"

    .line 8
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    const-string p3, "secure"

    .line 14
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_16

    .line 20
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Secure:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->System:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 25
    :goto_18
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 27
    const-string p1, "key"

    .line 29
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public query()V
    .registers 8

    .line 1
    sget-object v0, Lcom/miui/maml/data/SettingsBinder$1;->$SwitchMap$com$miui$maml$data$SettingsBinder$Category:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x6

    .line 13
    const/4 v3, 0x5

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x2

    .line 17
    if-eq v0, v1, :cond_77

    .line 19
    if-eq v0, v6, :cond_16

    .line 21
    goto/16 :goto_d3

    .line 23
    :cond_16
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 25
    if-eq v0, v6, :cond_63

    .line 27
    if-eq v0, v5, :cond_4e

    .line 29
    if-eq v0, v4, :cond_39

    .line 31
    if-eq v0, v3, :cond_24

    .line 33
    if-eq v0, v2, :cond_24

    .line 35
    goto/16 :goto_d3

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 39
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 45
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 47
    double-to-float v2, v2

    .line 48
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 51
    move-result v0

    .line 52
    float-to-double v0, v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 56
    goto/16 :goto_d3

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 60
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 66
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 68
    double-to-long v2, v2

    .line 69
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 72
    move-result-wide v0

    .line 73
    long-to-double v0, v0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 77
    goto/16 :goto_d3

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 81
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 87
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 89
    double-to-int v2, v2

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    move-result v0

    .line 94
    int-to-double v0, v0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 98
    goto/16 :goto_d3

    .line 100
    :cond_63
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 102
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 108
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    if-nez v0, :cond_73

    .line 114
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 116
    :cond_73
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 119
    goto :goto_d3

    .line 120
    :cond_77
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 122
    if-eq v0, v6, :cond_c0

    .line 124
    if-eq v0, v5, :cond_ac

    .line 126
    if-eq v0, v4, :cond_98

    .line 128
    if-eq v0, v3, :cond_84

    .line 130
    if-eq v0, v2, :cond_84

    .line 132
    goto :goto_d3

    .line 133
    :cond_84
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 135
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 141
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 143
    double-to-float v2, v2

    .line 144
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 147
    move-result v0

    .line 148
    float-to-double v0, v0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 152
    goto :goto_d3

    .line 153
    :cond_98
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 155
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 158
    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 161
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 163
    double-to-long v2, v2

    .line 164
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 167
    move-result-wide v0

    .line 168
    long-to-double v0, v0

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 172
    goto :goto_d3

    .line 173
    :cond_ac
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 175
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 181
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 183
    double-to-int v2, v2

    .line 184
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 187
    move-result v0

    .line 188
    int-to-double v0, v0

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 192
    goto :goto_d3

    .line 193
    :cond_c0
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 195
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 198
    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 201
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    if-nez v0, :cond_d0

    .line 207
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 209
    :cond_d0
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 212
    :goto_d3
    return-void
.end method
